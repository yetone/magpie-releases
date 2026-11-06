cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3184"
  sha256 arm:   "8c9aa8876fd254c564c227ef828fd515b4f889ffd07736825b7b590c300a3e7f",
         intel: "78cd0127dbd740b1ed46d72f86a127ca3c4fb06a7a8d12526f12659d9332413c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
