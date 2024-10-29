"use client";
import FindARide from "@/components/FindARide";

export default function Home() {
  return (
    <div className=" min-h-screen p-6 flex">
      <main className="flex-1 ml-8 w-full">
        <h1 className="text-3xl font-bold mb-4">Išči prevoz</h1>
        <FindARide />

        <div className="space-y-4">
          <div className="bg-gray-100 rounded-lg p-4 shadow-lg">
            <h2 className="text-lg text-black font-semibold">
              Ljubljana &gt; Maribor
            </h2>
            <div className="flex justify-around mt-2">
              <span>30 Danes</span>
              <span>29 Sreda</span>
              <span>8 Četrtek</span>
            </div>
          </div>
          <div className="bg-gray-100 rounded-lg p-4 shadow-lg">
            <h2 className="text-lg font-semibold">Koper &gt; Ljubljana</h2>
            <div className="flex justify-around mt-2">
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
