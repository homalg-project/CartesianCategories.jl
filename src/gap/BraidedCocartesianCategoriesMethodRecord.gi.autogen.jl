# SPDX-License-Identifier: GPL-2.0-or-later
# CartesianCategories: Cartesian and cocartesian categories and various subdoctrines
#
# Implementations
#

@InstallValueConst( BRAIDED_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD, @rec(

CocartesianBraiding = @rec(
  filter_list = [ "category", "object", "object" ],
  input_arguments_names = [ "cat", "a", "b" ],
  output_source_getter_string = "BinaryCoproduct( cat, a, b )",
  output_source_getter_preconditions = [ [ "Coproduct", 1 ] ],
  output_range_getter_string = "BinaryCoproduct( cat, b, a )",
  output_range_getter_preconditions = [ [ "Coproduct", 1 ] ],
  with_given_object_position = "both",
  return_type = "morphism",
  dual_operation = "CartesianBraidingInverse",
  dual_arguments_reversed = false,
),

CocartesianBraidingWithGivenCoproducts = @rec(
  filter_list = [ "category", "object", "object", "object", "object" ],
  input_arguments_names = [ "cat", "s", "a", "b", "r" ],
  output_source_getter_string = "s",
  output_source_getter_preconditions = [ ],
  output_range_getter_string = "r",
  output_range_getter_preconditions = [ ],
  return_type = "morphism",
  dual_operation = "CartesianBraidingInverseWithGivenDirectProducts",
  dual_with_given_objects_reversed = true,
),

CocartesianBraidingInverse = @rec(
  filter_list = [ "category", "object", "object" ],
  input_arguments_names = [ "cat", "a", "b" ],
  output_source_getter_string = "BinaryCoproduct( cat, b, a )",
  output_source_getter_preconditions = [ [ "Coproduct", 1 ] ],
  output_range_getter_string = "BinaryCoproduct( cat, a, b )",
  output_range_getter_preconditions = [ [ "Coproduct", 1 ] ],
  with_given_object_position = "both",
  return_type = "morphism",
  dual_operation = "CartesianBraiding",
  dual_arguments_reversed = false,
),

CocartesianBraidingInverseWithGivenCoproducts = @rec(
  filter_list = [ "category", "object", "object", "object", "object" ],
  input_arguments_names = [ "cat", "s", "a", "b", "r" ],
  output_source_getter_string = "s",
  output_source_getter_preconditions = [ ],
  output_range_getter_string = "r",
  output_range_getter_preconditions = [ ],
  return_type = "morphism",
  dual_operation = "CartesianBraidingWithGivenDirectProducts",
  dual_with_given_objects_reversed = true,
),

) );

# collect cartesian and cocartesian operations
@BindGlobal( "BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD", @rec( ) );

Perform( RecNames( BRAIDED_CARTESIAN_CATEGORIES_METHOD_NAME_RECORD ), function ( name )
    
    BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD[name] = BRAIDED_CARTESIAN_CATEGORIES_METHOD_NAME_RECORD[name];
    
end );

Perform( RecNames( BRAIDED_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD ), function ( name )
    
    BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD[name] = BRAIDED_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD[name];
    
end );

CAP_INTERNAL_ENHANCE_NAME_RECORD( BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD );

CAP_INTERNAL_GENERATE_DECLARATIONS_AND_INSTALLATIONS_FROM_METHOD_NAME_RECORD(
    BRAIDED_CARTESIAN_CATEGORIES_METHOD_NAME_RECORD,
    "CartesianCategories",
    "BraidedCartesianCategoriesMethodRecord",
    "Cartesian Categories",
    "Add-methods"
);

CAP_INTERNAL_GENERATE_DECLARATIONS_AND_INSTALLATIONS_FROM_METHOD_NAME_RECORD(
    BRAIDED_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD,
    "CartesianCategories",
    "BraidedCocartesianCategoriesMethodRecord",
    "Cocartesian Categories",
    "Add-methods"
);

CAP_INTERNAL_REGISTER_METHOD_NAME_RECORD_OF_PACKAGE( BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD, "CartesianCategories" );

CAP_INTERNAL_INSTALL_ADDS_FROM_RECORD( BRAIDED_CARTESIAN_AND_COCARTESIAN_CATEGORIES_METHOD_NAME_RECORD );
