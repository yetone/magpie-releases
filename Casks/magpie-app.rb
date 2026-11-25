cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4778"
  sha256 arm:   "2ff56e5cd6251564b066ea76c0b5609ceb1dccbb6f7bad63124ded097dcf8ca1",
         intel: "4cd6b7aa3a6510146ca4d55a69bac536e367a087787ad76c9bf22941b6726a1a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
