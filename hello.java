class HEllo{
	public static void main(String args[])
	{
		try{
			while(true)
			{
				System.out.println("Hello world");
				Thread.sleep(60000);
			}
		}catch(Exception e)
		{
			System.out.println("Error Occured"+e);
		}
	}
}
