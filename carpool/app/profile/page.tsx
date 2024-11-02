"use client";

import { Car, Mail, Phone, User } from "lucide-react";
import { useSession } from "next-auth/react";

import { Avatar } from "@/components/ui/avatar";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { UserCars } from "@/components/user-cars";

export default function ProfilePage() {
  const { data: session } = useSession();
  console.log("SESSION:", session);
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
          </TabsList>

          <TabsContent value="profile">
            <Card className="p-6">
              <form className="space-y-6">
                <div className="grid gap-6 md:grid-cols-2">
                  <div className="space-y-2">
                    <Label htmlFor="name">First Name</Label>
                    <Input id="name" defaultValue={session?.user.name} />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="surname">Last Name</Label>
                    <Input id="surname" defaultValue={session?.user.surname} />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="username">Username</Label>
                  <div className="relative">
                    <Input
                      id="username"
                      defaultValue={session?.user.username}
                      className="pl-10"
                    />
                    <User className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="email">Email</Label>
                  <div className="relative">
                    <Input
                      id="email"
                      type="email"
                      defaultValue={session?.user.email}
                      className="pl-10"
                    />
                    <Mail className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="phone">Phone</Label>
                  <div className="relative">
                    <Input
                      id="phone"
                      type="tel"
                      defaultValue={session?.user.phone}
                      className="pl-10"
                    />
                    <Phone className="absolute left-3 top-3 h-4 w-4 text-gray-500" />
                  </div>
                </div>

                <div className="flex justify-end">
                  <Button type="submit">Save Changes</Button>
                </div>
              </form>
            </Card>
          </TabsContent>

          <TabsContent value="cars">
            <Card className="p-6">
              <div className="mb-6 flex items-center justify-between">
                <h2 className="flex items-center gap-2 text-xl font-semibold">
                  <Car className="h-5 w-5" />
                  My Cars
                </h2>
                <Button>
                  <Car className="mr-2 h-4 w-4" />
                  Add New Car
                </Button>
              </div>
              <UserCars userId={session?.user.id} />
            </Card>
          </TabsContent>
        </Tabs>
      </div>
    </div>
  );
}
