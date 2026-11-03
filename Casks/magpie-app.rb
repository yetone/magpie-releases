cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2864"
  sha256 arm:   "4501fb804c66d774dc81ac7978ca620408a990198168730963d3587eae9fac6e",
         intel: "ad560d01ea4d9b3231289d119cdbd58729b2fcd7a73b34c781918361906712f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
