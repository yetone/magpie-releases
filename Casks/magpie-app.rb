cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2566"
  sha256 arm:   "f0bd0ec34233606e4037c8d7d78fe1c637d129ca2d91a5638475c0dc49f11d3d",
         intel: "181d9dba785a8818cc313936603b26154321ddb7127297b749498ccfa2bc9dac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
