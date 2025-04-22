import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:allerscan/ui/manage/manage_allergies/providers/allergy_provider.dart';

class ManageAllergiesPage extends StatelessWidget {
  const ManageAllergiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final allergyProvider = Provider.of<AllergyProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Kelola Alergi')),
      body: ListView(
        children:
            allergyProvider.availableAllergies.map((allergy) {
              final selected = allergyProvider.isSelected(allergy);
              return CheckboxListTile(
                title: Text(allergy),
                value: selected,
                onChanged: (_) {
                  allergyProvider.toggleAllergy(allergy);
                },
              );
            }).toList(),
      ),
    );
  }
}
