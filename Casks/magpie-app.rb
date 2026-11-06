cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3147"
  sha256 arm:   "ddcaafd74ba1af750c69ebda01db990a39ceafb8fd4bd607c37bfe4bba1504c4",
         intel: "af6f09a1b9a01f7e7a3795145a69dd6b7a11a95eb33b733224443eae35a22277"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
