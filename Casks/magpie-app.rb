cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2095"
  sha256 arm:   "92144885e54b965b254a404d58a0b62fc379e5fdbf405bd25b7601dff25a238b",
         intel: "7312c1c658dfd47929b5629848deeffd1a4c662dc64cc8983ffcc44af6385d98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
