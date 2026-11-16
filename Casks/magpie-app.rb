cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4296"
  sha256 arm:   "7ca2e00e27734b52def2dd8c8992f4645d2aca61cdca79c1e828527f29c1b4f4",
         intel: "5386570867e0e35a39629e7186eee726e4a49a5a2ecc55831657130f6be9948f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
