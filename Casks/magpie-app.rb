cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4285"
  sha256 arm:   "d64e4aab99529b9c05f56dadbdafb02e19ed52032f268773cdf58f1ac1b33b9d",
         intel: "593f2900f21c4584ba31e1e3089949a438161afec1d3375db94a235bbd192fd5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
