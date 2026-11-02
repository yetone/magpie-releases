cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2706"
  sha256 arm:   "f1396bf2a75581948f380ad8985c3da0cfc793638b09664b6670a9c35f7d0002",
         intel: "4dd35dc919be473f2a6a8e51b0c1fc73de4c2c7132e58932ce8610107947978d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
