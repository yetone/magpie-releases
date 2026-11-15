cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4258"
  sha256 arm:   "35967ecea4728fd14722e5f814df14d911c271ab4429e3e5f0da18f04cd61b1e",
         intel: "0a1c0c095a0e68c28dcc7279f559ca85aab329624321633c6d2f90ca6b1aaf00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
