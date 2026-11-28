cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5016"
  sha256 arm:   "dd8ea6e28416e028381a9ae540fcc3f410a183e7801476b9ea854334fedb1c94",
         intel: "12342a24986de99808186f6d3ffa78958300ea590f0978842df4c1df74b37243"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
