cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3661"
  sha256 arm:   "499a68cf562ef60f6460b7f774d251f467ccd920282c988e00f3f4c42a236281",
         intel: "3285ceb445bc7d073f580afb87032428b3d11fb4a996d01781abd644761a6ed5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
