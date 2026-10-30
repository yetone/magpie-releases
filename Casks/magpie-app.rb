cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2192"
  sha256 arm:   "c393f1057da192c1b36eba5846385688399b1cec7e03fbd994a5dec181980728",
         intel: "fe28e16d29280d53ca1ccc10da0ff720d0c6d70c53b02bdaeadb524ab583889a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
