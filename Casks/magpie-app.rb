cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3169"
  sha256 arm:   "77d35de0b9b2f051c1574c0abe1740ae8bc9732334ec9ca7864da51d006260f2",
         intel: "ef39bc2950673ecf97d037650bcb1c0848660a0109e5b33b61df93310f66eca1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
