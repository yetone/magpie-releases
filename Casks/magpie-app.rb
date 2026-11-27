cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4955"
  sha256 arm:   "863c9ecc894440302184fa9736950eef47a5e4d1110e13fab7512d303a1a9aa2",
         intel: "8db54cdfa7252f5592864489ba064d15104e1d9812b3879cd7cc91c1cfe32b61"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
