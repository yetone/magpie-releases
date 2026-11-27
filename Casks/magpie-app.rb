cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4926"
  sha256 arm:   "ed98816dc0bff5639698793bd1de70c03230578b96eb068acc8522a0bc7218ae",
         intel: "3cbf943c2503e835d627851a962526b02c15ea566b674ccbca6b958260cece58"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
