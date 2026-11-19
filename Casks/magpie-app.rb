cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4566"
  sha256 arm:   "16cfd369306fa979fce7a954c0951beb9ba8203c26f4f113f0174aaa0478e1b0",
         intel: "6bb719eaaa7e69c103034d892f23bfbbe7c3ed56e52e43d06306bdf11755e98a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
