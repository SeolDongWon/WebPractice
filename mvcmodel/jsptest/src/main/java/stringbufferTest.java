
public class stringbufferTest {
	public static void main(String[] args) {
		StringBuffer sql = new StringBuffer();
		String str = "select count(*) from board";
		
		sql.append("select count(*) from board");
		System.out.println(sql.toString());
		
		sql.append(" ");
		System.out.println(sql.toString());
		
		sql.append("where subject like ? ");
		System.out.println(sql.toString());
		
		
		sql.delete(0, sql.length());
		System.out.println(sql.toString());
		
		sql.append("? ");
		System.out.println(sql.toString());
		
		System.out.println(str);
		
		str+=" where subject like ? ";
		System.out.println(str);

	}
}
