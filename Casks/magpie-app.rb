cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3368"
  sha256 arm:   "293d102ecd99359cfe732b0ba59fb4fefca6fabca20b84b4a0227bae232045ad",
         intel: "0db2a043801bbbe7a78e440e81f16c06c01ff16647c665524016489e28896adf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
