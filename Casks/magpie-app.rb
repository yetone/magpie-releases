cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2885"
  sha256 arm:   "7aa869eaf387459852a50df4337f841691cd3c9fd5f27c6fa8b875a8b46e7e55",
         intel: "92cf5b15f5258489448c27aef0f5ed225efcffdc8b87e63df723fd0685779ebf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
