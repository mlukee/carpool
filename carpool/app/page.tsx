"use client";

import FindARide from "@/components/find-a-ride";

export default function Home() {
  return (
    <div className="flex min-h-screen p-6">
      <main className="ml-8 w-full flex-1">
        <h1 className="mb-4 text-3xl font-bold">Išči prevoz</h1>
        <FindARide />

        <div className="space-y-4">
          <div className="rounded-lg bg-gray-100 p-4 shadow-lg">
            <h2 className="text-lg font-semibold text-black">
              Ljubljana &gt; Maribor
            </h2>
            <div className="mt-2 flex justify-around">
              <span>30 Danes</span>
              <span>29 Sreda</span>
              <span>8 Četrtek</span>
            </div>
          </div>
          <div className="rounded-lg bg-gray-100 p-4 shadow-lg">
            <h2 className="text-lg font-semibold">Koper &gt; Ljubljana</h2>
            <div className="mt-2 flex justify-around">
              <span>33 Danes</span>
              <span>19 Sreda</span>
              <span>4 Četrtek</span>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
