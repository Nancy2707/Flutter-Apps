import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic>? products; // Variable to store the fetched products
  bool isLoading = true; // To show a loading indicator while fetching data
  String? errorMessage; // To store any error messages

  // Function to fetch data using async/await
  Future<void> fetchData() async {
    final url = Uri.parse('https://dummyjson.com/products');
    
    try {
      // Await the HTTP GET request
      final response = await http.get(url);

      // Check if the status code is 200 (OK)
      if (response.statusCode == 200) {
        // Parse the response body
        final data = jsonDecode(response.body);
        // Store the products in the state
        setState(() {
          products = data['products']; 
          isLoading = false; 
        });
      } else {
        // If the response has a status code other than 200, show an error
        setState(() {
          errorMessage = 'Failed to load data: ${response.statusCode}';
          isLoading = false; // Stop loading, but show the error
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error: $e';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : errorMessage != null
                ? Text(errorMessage!)
                : products != null && products!.isNotEmpty
                    ? ListView.builder(
                        itemCount: products!.length,
                        itemBuilder: (context, index) {
                          final product = products![index];
                          return Card(
                            margin: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: product['image'] != null
                                  ? Image.network(product['image'], width: 50, height: 50)
                                  : const Icon(Icons.image_not_supported),
                              title: Text(product['title'] ?? 'No Title'),
                              subtitle: Text('Price: \$${product['price'] ?? 'N/A'}'), 
                            ),
                          );
                        },
                      )
                    : const Text('No data fetched yet'),
      ),
    );
  }
}
