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
                Carpool @ {new Date().getFullYear()}
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
          <SheetHeader>
            <SheetTitle className="flex justify-between px-2">
              Menu
              <ThemeToggle />
            </SheetTitle>
            <hr />
            <div className="flex flex-col gap-2">
              <Link href="/" className="flex items-center gap-2">
                <Home /> Home
              </Link>
              <Link href="/find-ride" className="flex items-center gap-2">
                <Car /> Find Rides
              </Link>
              <Link href="/add-ride" className="flex items-center gap-2">
                <Plus /> Add Rides
              </Link>
              <Link href="/profile" className="flex items-center gap-2">
                <User /> Profile
              </Link>
            </div>
          </SheetHeader>
        </SheetContent>
      </Sheet>
    </div>
  );
};
export default Sidebar;
// end sidebar.tsx in Components
Home


// find-ride page
return (
  <>
    <div className="mx-auto max-w-7xl px-6">
      <h1 className="mb-8 text-3xl font-bold">Available Rides</h1>
      <div className="grid grid-cols-2 gap-8">
        <FindARide onFilter={handleFilter} />
        <RideList 
        rides={filteredRides}
        onUpdateRide={onUpdateRide}
        userId={session?.user?.id}
        />
      </div>
    </div>
  </>
);
// end  find-ride page 


// start Profile page
return (
  <div className="container mx-auto">
    <div className="mx-auto max-w-4xl">
      <div className="mb-8 flex items-center gap-6">
        <Avatar className="h-24 w-24">
          <User className="h-12 w-12" />
        </Avatar>
        <div>
          <h1 className="text-3xl font-bold text-foreground">
            {session?.user.name} {session?.user.surname}
          </h1>
          <p className="text-muted-foreground">@{session?.user.username}</p>
        </div>
      </div>
      <Tabs defaultValue="profile" className="space-y-6">
        <TabsList>
          <TabsTrigger value="profile">Profile</TabsTrigger>
          <TabsTrigger value="cars">My Cars</TabsTrigger>
          <TabsTrigger value="rides">My Rides</TabsTrigger>
          </TabsList>
          <TabsContent value="cars">
            <Card className="p-6">
              <div className="mb-6 flex items-center justify-between">
                <h2 className="flex items-center gap-2 text-xl font-semibold">
                  <Car className="h-5 w-5" />
                  My Cars
                </h2>
                <Link href="/add-car">
                  <Button>
                    <Car className="mr-2 h-4 w-4" />
                    Add new car
                  </Button>
                </Link>
              </div>
              <UserCars userId={session?.user.id} />
            </Card>
          </TabsContent>
          <TabsContent value="rides">
            <Card className="p-6">
              <div className="mb-6 flex items-center justify-between">
                <h2 className="flex items-center gap-2 text-xl font-semibold">
                  <Car className="h-5 w-5" />
                  My Rides
                </h2>
                <Link href="/find-ride">
                  <Button>
                    <Car className="mr-2 h-4 w-4" />
                    Book a Ride
                  </Button>
                </Link>
              </div>
              <UserCars userId={session?.user.id} />
            </Card>
          </TabsContent>
      </Tabs>
    </div>
  </div>
);
// end Profile page
