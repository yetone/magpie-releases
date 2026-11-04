cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2915"
  sha256 arm:   "261fd6361c9d9e624cb8e19454e3bcfd341c57c1a04c1b8f9f0a81ab985becf2",
         intel: "17b98195b6d3d53463bf39c01cb012fa8a2a5a0016116a87a613c62da2928147"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
