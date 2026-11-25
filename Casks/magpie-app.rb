cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4813"
  sha256 arm:   "4745db4e4afcd42bc91d95ba1c755b0a891ce793af828745c92e0c3281c3bde3",
         intel: "71c6478bec41c20e45a73275a459bdea09a5c1e3ce8ffe06bf410efc4e22dbad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
