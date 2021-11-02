namespace Windows.Shell
{
	using System;
	using System.Drawing;
	using System.Runtime.InteropServices;
	using Microsoft.Win32;
	/// <summary>Signatures that identifies the type of data block that follows the header.</summary>
	public enum DataBlockSignature : uint
	{
		/// <summary>The <see cref="ConsoleProperties"/> signature.</summary>
		ConsoleProperties = 0xA0000002
	}
	/// <summary>The color mode.</summary>
	public enum ColorMode
	{
		/// <summary>The dark color mode.</summary>
		Dark,
		/// <summary>The light color mode.</summary>
		Light
	}
	/// <summary>Enables an object to be loaded from or saved to a disk file, rather than a storage object or stream.</summary>
	[ComImport, InterfaceType(ComInterfaceType.InterfaceIsIUnknown), Guid("0000010B-0000-0000-C000-000000000046")]
	public interface IPersistFile
	{
		#region IPersist methods
		/// <summary>Retrieves the class identifier (CLSID) of the object.</summary>
		/// <param name="handleClassId">A pointer to the location that receives the CLSID on return. The CLSID is a globally unique identifier (GUID) that uniquely represents an object class that defines the code that can manipulate the object's data.</param>
		void GetClassID(out Guid handleClassId);
		#endregion
		/// <summary>Determines whether an object has changed since it was last saved to its current file.</summary>
		/// <returns>This method returns S_OK to indicate that the object has changed. Otherwise, it returns S_FALSE.</returns>
		[PreserveSig]
		int IsDirty();
		/// <summary>Loads the specified file name.</summary>
		/// <param name="fileName">The absolute path of the file to be opened.</param>
		/// <param name="mode">The access mode to be used when opening the file. Possible values are taken from the STGM enumeration. The method can treat this value as a suggestion, adding more restrictive permissions if necessary. If dwMode is 0, the implementation should open the file using whatever default permissions are used when a user opens the file.</param>
		void Load([MarshalAs(UnmanagedType.LPWStr)] string fileName, int mode);
		/// <summary>Saves a copy of the object to the specified file.</summary>
		/// <param name="fileName">The absolute path of the file to which the object should be saved. If is <see langword="null"/>, the object will save its data to the current file, if there is one.</param>
		/// <param name="remember">Indicates whether the <paramref name="fileName"/> parameter is to be used as the current working file. If <see langword="true"/>, <paramref name="fileName"/> becomes the current path for the file and the object should clear its dirty flag after the save. If <see langword="false"/>, this save operation is a Save A Copy As... operation. In this case, the current file is unchanged and the object should not clear its dirty flag. If <paramref name="fileName"/> is <see langword="null"/>, the implementation should ignore this flag.</param>
		void Save([MarshalAs(UnmanagedType.LPWStr)] string fileName, [MarshalAs(UnmanagedType.Bool)] bool remember);
	}
	/// <summary>Exposes methods that allow an application to attach extra data blocks to a Shell link. These methods add, copy, or remove data blocks.</summary>
	/// <remarks>The data blocks are in the form of a structure. The first two members are the same for all data blocks. The first member gives the structure's size. The second member is a signature that identifies the type of data block. The remaining members hold the block's data. There are five types of data block currently supported.</remarks>
	[ComImport, InterfaceType(ComInterfaceType.InterfaceIsIUnknown), Guid("45E2b4AE-B1C3-11D0-B92F-00A0C90312E1")]
	public interface IShellLinkDataList
	{
		/// <summary>Adds a data block to a link.</summary>
		/// <param name="dataBlockHandle">The data block structure. For a list of supported structures, see <see cref="IShellLinkDataList"/>.</param>
		void AddDataBlock(IntPtr dataBlockHandle);
		/// <summary>Retrieves a copy of a link's data block.</summary>
		/// <param name="dataBlockSignature">The data block's signature. The signature value for a particular type of data block can be found in its structure reference. For a list of supported data block types and their associated structures, see <see cref="IShellLinkDataList"/>.</param>
		/// <param name="dataBlockHandle">The address of a pointer to a copy of the data block structure. If <see cref="IShellLinkDataList.CopyDataBlock"/> returns a successful result, the calling application must free the memory when it is no longer needed by calling LocalFree.</param>
		void CopyDataBlock(DataBlockSignature dataBlockSignature, out IntPtr dataBlockHandle);
		/// <summary>Removes a data block from a link.</summary>
		/// <param name="dataBlockSignature">The data block's signature. The signature value for a particular type of data block can be found in its structure reference. For a list of supported data block types and their associated structures, see <see cref="IShellLinkDataList"/>.</param>
		void RemoveDataBlock(DataBlockSignature dataBlockSignature);
	}
	/// <summary>Exposes methods that create, modify, and resolve Shell links.</summary>
	[ComImport, InterfaceType(ComInterfaceType.InterfaceIsIUnknown), Guid("000214F9-0000-0000-C000-000000000046")]
	public interface IShellLinkW { }
	/// <summary>Holds an extra data block used by <see cref="IShellLinkDataList"/>. It holds <see href="https://msdn.microsoft.com/en-us/library/windows/desktop/bb773359%28v=vs.85%29.aspx">console properties</see>.</summary>
	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
	public struct ConsoleProperties
	{
		/// <summary>The size of the extra data block.</summary>
		public int Size;
		/// <summary>A signature that identifies the type of data block that follows the header.</summary>
		public DataBlockSignature Signature;
		/// <summary>Specifies both foreground and background colors used in the console by color name.</summary>
		public ushort ScreenColors;
		/// <summary>Specifies both foreground and background colors used in popup windows by color name.</summary>
		public ushort PopupColors;
		/// <summary>Specifies the size of the screen buffer (the screen that is retained in memory). If the size of the screen displayed on the monitor is smaller than the screen buffer, its can be scrolled to see the entire screen.</summary>
		public Coord ScreenBufferSize;
		/// <summary>Specifies the size of the screen in characters.</summary>
		public Coord WindowSize;
		/// <summary>Specifies the position of the command window on the user's screen.</summary>
		public Coord WindowPosition;
		/// <summary>The font (undocumented).</summary>
		public int Font;
		/// <summary>Specifies the input buffer size.</summary>
		public int InputBufferSize;
		/// <summary>Specifies the size of the command window font.</summary>
		public Coord FontSize;
		/// <summary>Specifies whether the font is True Type.</summary>
		public int FontFamily;
		/// <summary>Specifies whether the font is True Type.</summary>
		public int FontWeight;
		/// <summary>Specifies the name of an alternate command window font. If the font name in empty, the system uses raster fonts.</summary>
		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		public string FaceName;
		/// <summary>Specifies the percentage of a character cell that is occupied by the cursor. This setting affects the default window.</summary>
		public int CursorSize;
		/// <summary>Specifies whether the command window is set to open in full-screen mode.</summary>
		public bool FullScreen;
		/// <summary>Specifies whether user can cut and paste text by using the mouse.</summary>
		public bool QuickEdit;
		/// <summary>Specifies whether the user types over existing characters.</summary>
		public bool InsertMode;
		/// <summary>Specifies whether the console is in auto-position mode.</summary>
		public bool AutoPosition;
		/// <summary>Specifies the number of commands that can be stored in each command history buffer.</summary>
		public int HistoryBufferSize;
		/// <summary>Specifies the number of history buffers allocated to store commands.</summary>
		public int NumberOfHistoryBuffers;
		/// <summary>Specifies whether to remove duplicated history entries.</summary>
		public bool HistoryNoDup;
		/// <summary>An array of <see href="https://msdn.microsoft.com/en-us/library/windows/desktop/dd183449(v=vs.85).aspx">COLORREF</see> values which specifies the console color table.</summary>
		[MarshalAs(UnmanagedType.ByValArray, SizeConst = 16)]
		public int[] ColorTable;
		/// <summary>Initializes a new instance of the <see cref="ConsoleProperties"/> <see langword="struct"/>.</summary>
		/// <param name="font">The font value.</param>
		public ConsoleProperties()
		{
			this.Size = Marshal.SizeOf(typeof(ConsoleProperties));
			this.Signature = DataBlockSignature.ConsoleProperties;
			this.AutoPosition = true;
			const string RegistryKeyConsole = "HKEY_CURRENT_USER\\Console";
			this.ColorTable = new int[16];
			for (var index = 0; index < 16; index++)
					this.ColorTable[index] = (int)Registry.GetValue(RegistryKeyConsole, "ColorTable" + index.ToString("00"), 0);
			this.CursorSize = (int)Registry.GetValue(RegistryKeyConsole, "CursorSize", 25);
			this.FaceName = Registry.GetValue(RegistryKeyConsole, "FaceName", string.Empty).ToString();
			//this.Font = font;
			this.FontFamily = (int)Registry.GetValue(RegistryKeyConsole, "FontFamily", 54);
			this.FontSize = new Coord((int)Registry.GetValue(RegistryKeyConsole, "FontSize", 0x180000));
			this.FontWeight = (int)Registry.GetValue(RegistryKeyConsole, "FontWeight", 400);
			this.FullScreen = (bool)Registry.GetValue(RegistryKeyConsole, "FullScreen", false);
			this.HistoryBufferSize = (int)Registry.GetValue(RegistryKeyConsole, "HistoryBufferSize", 50);
			this.HistoryNoDup = (bool)Registry.GetValue(RegistryKeyConsole, "HistoryNoDup", false);
			this.InputBufferSize = 0;
			this.InsertMode = (bool)Registry.GetValue(RegistryKeyConsole, "InsertMode", false);
			this.NumberOfHistoryBuffers = (int)Registry.GetValue(RegistryKeyConsole, "NumberOfHistoryBuffers", 4);
			// TODO: Review default values
			this.PopupColors = (ushort)Registry.GetValue(RegistryKeyConsole, "PopupColors", 0xf5);
			this.QuickEdit = Convert.ToBoolean(Registry.GetValue(RegistryKeyConsole, "QuickEdit", false));
			this.ScreenBufferSize = new Coord((int)Registry.GetValue(RegistryKeyConsole, "ScreenBufferSize", 0x190050));
			this.ScreenColors = (ushort)Registry.GetValue(RegistryKeyConsole, "ScreenColors", 0x07);
			this.WindowPosition = new Coord((ulong)Registry.GetValue(RegistryKeyConsole, "WindowPosition", 0x0));
			this.WindowSize = new Coord((int)Registry.GetValue(RegistryKeyConsole, "WindowSize", 0x190050));
		}
	}
	/// <summary>Defines the coordinates of a character cell in a console screen buffer.</summary>
	/// <seealso href="https://docs.microsoft.com/en-us/windows/console/coord-str">COORD struct.</seealso>
	[StructLayout(LayoutKind.Sequential)]
	public struct Coord
	{
		/// <summary>The horizontal coordinate or column value. The units depend on the function call.</summary>
		public short X;
		/// <summary>The vertical coordinate or row value. The units depend on the function call.</summary>
		public short Y;
		/// <summary>Initializes a new instance of the <see cref="Coord"/>  <see langword="struct"/>.</summary>
		/// <param name="coord">The <see cref="int"/> representation of the <see cref="Coord"/>.</param>
		public Coord(int coord)
		{
			var point = new Point(coord);
			this.X = (short)point.X;
			this.Y = (short)point.Y;
		}
	}
	/// <summary>Provides methods to modify a Windows shell link.</summary>
	public static class Link
	{
		#region Methods
		/// <summary>Sets the <see cref="ConsoleProperties"/> of the shell link in the specified <paramref name="path"/> with the current values in the Windows registry.</summary>
		/// <param name="path">The shell link file path.</param>
		public static void SetConsolePropertiesFromRegistry(string path, ColorMode colorMode)
		{
			// Load shell link file.
			var shellLink = Activator.CreateInstance(Type.GetTypeFromCLSID(new Guid("00021401-0000-0000-C000-000000000046"))) as IShellLinkW;
			((IPersistFile)shellLink).Load(path, 0);
			((IShellLinkDataList)shellLink).CopyDataBlock(DataBlockSignature.ConsoleProperties, out IntPtr handleConsoleProperties);
			// Set shell link console properties with current Windows registry values.
			var consoleProperties = new ConsoleProperties();
			// Save the Windows shell link file.
			handleConsoleProperties = Marshal.AllocCoTaskMem(consoleProperties.Size);
			Marshal.StructureToPtr(consoleProperties, handleConsoleProperties, true);
			((IShellLinkDataList)shellLink).RemoveDataBlock(DataBlockSignature.ConsoleProperties);
			((IShellLinkDataList)shellLink).AddDataBlock(handleConsoleProperties);
			((IPersistFile)shellLink).Save(null, true);
		}
		#endregion
	}
}