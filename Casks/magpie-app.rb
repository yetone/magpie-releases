cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1095"
  sha256 arm:   "ad308bd61e9f91ee1ec44ae9bcbe7ffae652d1715794b7bdda71322f0bab9218",
         intel: "9647b46f2fa6b86f56cfba5aee2c394ad4cab925a08de61f400dc86a76ce7832"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
