cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3909"
  sha256 arm:   "5f69dfe15dc441a33efb858623ca0c09512a7f4353528863bf8538fe19ebc4df",
         intel: "f88fac1c215f9f37a7695cb76a52356368a4e938c88eaae4e05c1ea5b1fcf24d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
