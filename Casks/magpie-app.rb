cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3039"
  sha256 arm:   "8a4230878ab125070885e37db99db1dadae02edb3caf4f9e134e338a36619b0f",
         intel: "2bb12751dd1aeecf9022a35d470b8097b0716b4ce871f1b89f2cfb2cd8deed70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
