cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.994"
  sha256 arm:   "b0fcfc6cc47c38e97ba385dc676238e2675c9e54821e15eb936852ad33a668c2",
         intel: "a56469cbb1964c4620d038301f786baf791caa5cc79e6fa7ba1b9fa76666fe7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
