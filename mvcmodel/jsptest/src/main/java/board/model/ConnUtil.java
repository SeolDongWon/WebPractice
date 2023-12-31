package board.model;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class ConnUtil {
	private static DataSource ds;
	static {
		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/myOracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}

}
