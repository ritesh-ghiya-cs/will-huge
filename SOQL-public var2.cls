/*****
the query variable field1 is directly passing into the database is class level public variable,
we should give violation for this case as there are chances to modify it externally.
 */

public class Foo {
	public static String field1 = 'yo';
	public void test1() {
		Database.query('SELECT Id FROM Account WHERE Id =' + field1 + 'string');
	}
}