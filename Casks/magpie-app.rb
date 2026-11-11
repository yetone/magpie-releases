cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3800"
  sha256 arm:   "99b649a3a7c7c50d838478c286b5f5f9e5609d3007f60121214e8d421a594625",
         intel: "7576f9403b68103b9544c127984f9f6e5c8175111d75cd979c1181619b74da48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
