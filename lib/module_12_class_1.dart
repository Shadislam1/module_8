import 'package:flutter/material.dart';
import 'package:module_8/model/expense.dart';

import 'package:intl/intl.dart';



class ExpanseTracker extends StatefulWidget {
  const ExpanseTracker({super.key});

  @override
  State<ExpanseTracker> createState() => _ExpanseTrackerState();
}

class _ExpanseTrackerState extends State<ExpanseTracker> {
  final List<Expense> _expense = [];
  final List<String> _categorys = [
    'Food',
    'Transport',
    'Entertainment',
    'Bills'];
  double _total = 0.0;


  void _addExpense(String title,double amount,DateTime date,String category){
      setState(() {
        _expense.add(Expense(title: title, amount: amount, date: date, category: category));
        _total += amount;
      });
  }
  void _deleteExpense(int index){
    setState(() {
      _total -= _expense[index].amount;
      _expense.removeAt(index);
    });
  }

  void _showForm(BuildContext context){
    TextEditingController titleControler = TextEditingController();
    TextEditingController amountControler = TextEditingController();
    String selectedCategory = _categorys.first;
    DateTime selectedDate = DateTime.now();

    showModalBottomSheet(
        context: context,
        builder:(_){
          return Padding(
            padding:  EdgeInsets.only(
              bottom: MediaQuery.of( context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  controller: titleControler,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: amountControler,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                  ),

                ),
                SizedBox(height: 10,),
                DropdownButtonFormField<String>(
                    items: _categorys.map((_category)=>DropdownMenuItem( value :_category,child: Text(_category))).toList(),
                    onChanged:(value)=>selectedCategory=value!,
                  decoration: InputDecoration(
                    labelText: 'Category',
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        if(titleControler.text.isEmpty || double.tryParse(amountControler.text)==null){
                          return;//update korte hbe  snackbar show korte hbe empty value not allow
                        }
                        _addExpense(titleControler.text,double.parse(amountControler.text) , selectedDate, selectedCategory);
                        amountControler.clear();
                        titleControler.clear();
                        Navigator.pop(context);
                      }, child: Text("Add Expense")),
                ),
              ],
            ),
          );
        }
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Expense Tracker"),
        actions: [
          IconButton(onPressed: () => _showForm(context), icon: Icon(Icons.add))
        ],

      ),
      floatingActionButton:FloatingActionButton(onPressed: ()=>_showForm(context),
          child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Total: \$${_total}",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _expense.length,
                itemBuilder: (ctx,index){
                  return Dismissible(
                    key: Key(_expense[index].hashCode.toString()),
                    background: Container(
                      color: Colors.red,
                    ),
                    onDismissed: (direction)=> _deleteExpense(index),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          child: Text(_expense[index].category),
                        ),
                        title: Text(_expense[index].title),
                        subtitle: Text(
                          DateFormat.yMMMMd().format(( _expense[index].date)),
                            ),
                        trailing: Text(_expense[index].amount.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    )
                    ),
                  );
                }
            ),
          )
        ],

      ),

    );
  }
}
