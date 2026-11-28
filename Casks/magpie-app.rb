cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5041"
  sha256 arm:   "6d86e8dba21e3e0c43213972e7da1d09efebb467a713666b623442f11da739fa",
         intel: "40429cf3ae8bda494093acb826aaa10c39d450872532ec506376527ed02f038c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
