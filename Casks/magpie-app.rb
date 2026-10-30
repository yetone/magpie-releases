cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2223"
  sha256 arm:   "75dd493058fea7d7403e889adc62e4aad023b863aecd93467e0515914867aa3a",
         intel: "ccb92db314b54fc50f16e491652ac9cd012d7f4fe31a44d9fc5518ca1ff9a760"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
