import 'dart:async';
import 'dart:io';
import 'package:maktabeh/models/Product.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHandler {
  DatabaseHandler._();
  static final DatabaseHandler db = DatabaseHandler._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null)
      return _database;
    _database = await initDB();
    return _database;
  }
  initDB() async {
    Directory documentsDirectory = await
    getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "ProductDB.db");
    return await openDatabase(
        path, version: 1,
        onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE Product ("
                  "id INTEGER PRIMARY KEY,"
                  "title TEXT,"
                  "description TEXT,"
                  "price INTEGER)"
          );
          await db.execute(
              "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [1, "iPhone", "iPhone is the stylist phone ever", 1000]
          );
          await db.execute(
          "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [2, "Pixel", "Pixel is the most feature phone ever", 800]
          );
          await db.execute(
          "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [3, "Laptop", "Laptop is most productive development tool", 2000]
          );
          await db.execute(
          "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [4, "Tablet", "Laptop is most productive development tool", 1500]
          );
          await db.execute(
          "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [5, "Pendrive", "Pendrive is useful storage medium", 100]
          );
          await db.execute(
          "INSERT INTO Product ('id', 'title', 'description', 'price')values (?, ?, ?, ?)",
          [6, "Floppy Drive", "Floppy drive is useful rescue storage medium", 20, ]
          );
        }
    );
  }
  Future<List<Product>> getAllProducts() async {
    final db = await database;
    List<Map> results = await db.query(
        "Product", columns: Product.columns, orderBy: "id ASC"
    );
    List<Product> products = new List();
    results.forEach((result) {
     // Product product = Product.fromMap(result);
    //  products.add(product);
    });
    return products;
  }
  Future<Product> getProductById(int id) async {
    final db = await database;
    var result = await db.query("Product", where: "id = ", whereArgs: [id]);
   // return result.isNotEmpty ? Product.fromMap(result.first) : Null;
  }
  insert(Product product) async {
    final db = await database;
    var maxIdResult = await db.rawQuery("SELECT MAX(id)+1 as last_inserted_id FROM Product");
    var id = maxIdResult.first["last_inserted_id"];
    var result = await db.rawInsert(
        "INSERT Into Product (id, name, description, price)"
            " VALUES (?, ?, ?, ?)",
        [id, product.title, product.description, product.price]
    );
    return result;
  }
  // update(Product product) async {
  //   final db = await database;
  //   var result = await db.update(
  //    //   "Product", product.toMap(), where: "id = ?", whereArgs: [product.id]
  //   );
  //   return result;
  // }
  delete(int id) async {
    final db = await database;
    db.delete("Product", where: "id = ?", whereArgs: [id]);
  }
}