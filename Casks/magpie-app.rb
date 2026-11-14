cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4153"
  sha256 arm:   "2b952231273061a971715ceedeb2974f55964824dcfebe865a050887d59dca82",
         intel: "28151d66c8d1f74a6ff87402ff34b0a95512d8d4e5516054cc191bce11211cc9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
