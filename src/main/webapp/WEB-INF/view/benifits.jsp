import React, { useState } from 'react';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';

const BenefitsPage = () => {
  // Calculator State
  const [budget, setBudget] = useState({
    totalFunding: 0,
    adminCosts: 0,
    programCosts: 0,
    staffCosts: 0,
  });

  const [impact, setImpact] = useState({
    beneficiaries: 0,
    volunteers: 0,
    hoursServed: 0,
  });

  const [donation, setDonation] = useState({
    amount: 0,
    frequency: 'one-time',
    taxRate: 30,
  });

  // Calculator Functions
  const calculateBudgetDistribution = () => {
    const total = parseFloat(budget.totalFunding);
    const admin = parseFloat(budget.adminCosts);
    const program = parseFloat(budget.programCosts);
    const staff = parseFloat(budget.staffCosts);

    const totalExpenses = admin + program + staff;
    const remaining = total - totalExpenses;
    const adminPercentage = (admin / total) * 100;
    const programPercentage = (program / total) * 100;
    const staffPercentage = (staff / total) * 100;

    return {
      remaining: remaining.toFixed(2),
      adminPercentage: adminPercentage.toFixed(1),
      programPercentage: programPercentage.toFixed(1),
      staffPercentage: staffPercentage.toFixed(1),
    };
  };

  const calculateCostPerBeneficiary = () => {
    const total = parseFloat(budget.totalFunding);
    const beneficiaries = parseFloat(impact.beneficiaries);
    if (beneficiaries === 0) return 0;
    return (total / beneficiaries).toFixed(2);
  };

  const calculateTaxDeduction = () => {
    const amount = parseFloat(donation.amount);
    const taxRate = parseFloat(donation.taxRate);
    const deduction = (amount * (taxRate / 100)).toFixed(2);
    const annual = donation.frequency === 'monthly' ? (amount * 12).toFixed(2) : amount;
    return { deduction, annual };
  };

  const budgetResults = calculateBudgetDistribution();
  const taxResults = calculateTaxDeduction();

  return (
    <div className="flex flex-col lg:flex-row gap-6 p-6 max-w-[1600px] mx-auto">
      {/* Left Column - Information */}
      <div className="lg:w-1/2 space-y-6">
        <Card>
          <CardHeader>
            <CardTitle>NGO Tax Benefits & Registration Guide</CardTitle>
          </CardHeader>
          <CardContent className="prose max-w-none">
            <div className="space-y-4">
              <section>
                <h3 className="text-xl font-semibold text-blue-800">Overview</h3>
                <p>
                  Non Government Organisations (NGOs) are established to serve society's needs and promote cultural values, 
                  not to earn profits. Notable Indian NGOs include Smile Foundation, Save the Children India, 
                  Helpage India, and CRY (Child Rights with You).
                </p>
              </section>

              <section>
                <h3 className="text-xl font-semibold text-blue-800">Tax Exemption Status</h3>
                <ul className="list-disc pl-6 space-y-2">
                  <li>NGOs with 12A-registration can claim income tax exemption</li>
                  <li>80G-certification helps attract more donors</li>
                  <li>Unregistered NGOs are taxed at regular rates</li>
                </ul>
              </section>

              <section>
                <h3 className="text-xl font-semibold text-blue-800">12A Registration</h3>
                <p>
                  Registration under Section 12A of the Income Tax Act (1961) is essential for tax exemption on donations. 
                  NGOs established before April 1st, 2021, must be registered as legitimate organizations.
                </p>
                <div className="bg-gray-50 p-4 rounded-lg mt-2">
                  <h4 className="font-semibold">Required Documents:</h4>
                  <ul className="list-disc pl-6 space-y-1 mt-2">
                    <li>Form 10A</li>
                    <li>Organization's PAN card</li>
                    <li>Trust Deed or Registration Certificate</li>
                    <li>Three years of financial statements</li>
                    <li>Certificate of Incorporation (Section 8 Companies)</li>
                  </ul>
                </div>
              </section>

              <section>
                <h3 className="text-xl font-semibold text-blue-800">80G Certification</h3>
                <p>
                  80G certification allows donors to receive tax benefits on their donations, encouraging more contributions.
                </p>
                <div className="bg-gray-50 p-4 rounded-lg mt-2">
                  <h4 className="font-semibold">Required Documents:</h4>
                  <ul className="list-disc pl-6 space-y-1 mt-2">
                    <li>NGO's PAN card</li>
                    <li>Detailed donor list with PAN and addresses</li>
                    <li>Registration certificates and legal documents</li>
                    <li>Property NOC (for rented premises)</li>
                    <li>Three years of IT Returns and accounts</li>
                    <li>Form 10G</li>
                    <li>List of welfare activities</li>
                  </ul>
                </div>
              </section>

              <section>
                <h3 className="text-xl font-semibold text-blue-800">Tax Filing Requirements</h3>
                <ul className="list-disc pl-6 space-y-2">
                  <li>File using ITR 7 form</li>
                  <li>Online filing mandatory</li>
                  <li>Digital signature required for audited accounts</li>
                  <li>Filing deadline: October 31st (with exemption) or July 31st (without exemption)</li>
                </ul>
              </section>
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Right Column - Calculator */}
      <div className="lg:w-1/2">
        <Card>
          <CardHeader>
            <CardTitle>NGO Calculator</CardTitle>
          </CardHeader>
          <CardContent>
            <Tabs defaultValue="budget" className="space-y-4">
              <TabsList>
                <TabsTrigger value="budget">Budget Calculator</TabsTrigger>
                <TabsTrigger value="impact">Impact Metrics</TabsTrigger>
                <TabsTrigger value="donation">Donation Calculator</TabsTrigger>
              </TabsList>

              <TabsContent value="budget" className="space-y-4">
                <div className="grid gap-4">
                  <div>
                    <Label>Total Funding</Label>
                    <Input
                      type="number"
                      value={budget.totalFunding}
                      onChange={(e) => setBudget({ ...budget, totalFunding: e.target.value })}
                      placeholder="Enter total funding"
                    />
                  </div>
                  <div>
                    <Label>Administrative Costs</Label>
                    <Input
                      type="number"
                      value={budget.adminCosts}
                      onChange={(e) => setBudget({ ...budget, adminCosts: e.target.value })}
                      placeholder="Enter administrative costs"
                    />
                  </div>
                  <div>
                    <Label>Program Costs</Label>
                    <Input
                      type="number"
                      value={budget.programCosts}
                      onChange={(e) => setBudget({ ...budget, programCosts: e.target.value })}
                      placeholder="Enter program costs"
                    />
                  </div>
                  <div>
                    <Label>Staff Costs</Label>
                    <Input
                      type="number"
                      value={budget.staffCosts}
                      onChange={(e) => setBudget({ ...budget, staffCosts: e.target.value })}
                      placeholder="Enter staff costs"
                    />
                  </div>
                  <div className="p-4 bg-gray-100 rounded-lg">
                    <h3 className="font-semibold mb-2">Budget Distribution</h3>
                    <p>Administrative: {budgetResults.adminPercentage}%</p>
                    <p>Programs: {budgetResults.programPercentage}%</p>
                    <p>Staff: {budgetResults.staffPercentage}%</p>
                    <p>Remaining Budget: ${budgetResults.remaining}</p>
                  </div>
                </div>
              </TabsContent>

              <TabsContent value="impact" className="space-y-4">
                <div className="grid gap-4">
                  <div>
                    <Label>Number of Beneficiaries</Label>
                    <Input
                      type="number"
                      value={impact.beneficiaries}
                      onChange={(e) => setImpact({ ...impact, beneficiaries: e.target.value })}
                      placeholder="Enter number of beneficiaries"
                    />
                  </div>
                  <div>
                    <Label>Number of Volunteers</Label>
                    <Input
                      type="number"
                      value={impact.volunteers}
                      onChange={(e) => setImpact({ ...impact, volunteers: e.target.value })}
                      placeholder="Enter number of volunteers"
                    />
                  </div>
                  <div>
                    <Label>Hours Served</Label>
                    <Input
                      type="number"
                      value={impact.hoursServed}
                      onChange={(e) => setImpact({ ...impact, hoursServed: e.target.value })}
                      placeholder="Enter total hours served"
                    />
                  </div>
                  <div className="p-4 bg-gray-100 rounded-lg">
                    <h3 className="font-semibold mb-2">Impact Metrics</h3>
                    <p>Cost per Beneficiary: ${calculateCostPerBeneficiary()}</p>
                    <p>Volunteer Hours per Beneficiary: {
                      impact.beneficiaries ? (impact.hoursServed / impact.beneficiaries).toFixed(2) : 0
                    }</p>
                  </div>
                </div>
              </TabsContent>

              <TabsContent value="donation" className="space-y-4">
                <div className="grid gap-4">
                  <div>
                    <Label>Donation Amount</Label>
                    <Input
                      type="number"
                      value={donation.amount}
                      onChange={(e) => setDonation({ ...donation, amount: e.target.value })}
                      placeholder="Enter donation amount"
                    />
                  </div>
                  <div>
                    <Label>Donation Frequency</Label>
                    <select 
                      className="w-full p-2 border rounded"
                      value={donation.frequency}
                      onChange={(e) => setDonation({ ...donation, frequency: e.target.value })}
                    >
                      <option value="one-time">One-time</option>
                      <option value="monthly">Monthly</option>
                    </select>
                  </div>
                  <div>
                    <Label>Tax Rate (%)</Label>
                    <Input
                      type="number"
                      value={donation.taxRate}
                      onChange={(e) => setDonation({ ...donation, taxRate: e.target.value })}
                      placeholder="Enter tax rate"
                    />
                  </div>
                  <div className="p-4 bg-gray-100 rounded-lg">
                    <h3 className="font-semibold mb-2">Donation Impact</h3>
                    <p>Annual Contribution: ${taxResults.annual}</p>
                    <p>Estimated Tax Deduction: ${taxResults.deduction}</p>
                  </div>
                </div>
              </TabsContent>
            </Tabs>
          </CardContent>
        </Card>
      </div>
    </div>
  );
};

export default BenefitsPage;