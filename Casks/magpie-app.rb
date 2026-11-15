cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4265"
  sha256 arm:   "294c70a6e24b699d778e19915c9ff8ecac1d356c9bd74c866c4a4207eae315b2",
         intel: "c7846683d118c738e6905c2b9ca51dd9e4c4847247a04c18d3cd196b73c12b94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
