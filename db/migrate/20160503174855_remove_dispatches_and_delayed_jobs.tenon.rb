# This migration comes from tenon (originally 20141117202434)
class RemoveDispatchesAndDelayedJobs < ActiveRecord::Migration
  def change
    drop_table :tenon_delayed_jobs
    drop_table :tenon_dispatches
  end
end
