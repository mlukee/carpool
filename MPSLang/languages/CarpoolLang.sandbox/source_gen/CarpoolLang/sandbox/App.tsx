// layout.tsx
return (
  <html lang="en" suppressHydrationWarning>
    <body className="overflow-x-hidden"
      <ThemeProvider attribute="class" defaultTheme="dark" enableSystem disableTransitionOnChange>
        <SessionWrapper>
          <Providers>
            <div className="flex min-h-screen flex-col">
              <Sidebar />
              <div className="flex flex-1 p-3">
                <main className="flex-1">{children}</main>
              </div>
              <footer className="mx-auto mb-1 items-center justify-center">
                Carpool @ 2024
              </footer>
            </div>
            <Toaster />
          </Providers>
        </SessionWrapper>
      </ThemeProvider>
    </body>
  </html>
); 
// end of layout.tsx
// start sidebar.tsx in Components
const Sidebar = () => {
  return (
    <div className="relative mr-auto p-2">
      <Sheet>
        <SheetTrigger asChild>
          <Button variant="outline" size="icon">
            <Menu className="h-[1.2rem] w-[1.2rem]" />
            <span className="sr-only">Toggle navigation</span>
          </Button>
        </SheetTrigger>
        <SheetContent side={"left"}>
        </SheetContent>
      </Sheet>
    </div>
  );
};
export default Sidebar;
// end sidebar.tsx in Components
Hello from appRender
Home
Hello from appRender
Hello from appRender
Hello from appRender
Hello from appRender
