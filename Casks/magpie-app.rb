cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4488"
  sha256 arm:   "94b3948904d68952e090b47c3c5ae44eb7b54501cf28e33ff92f5f2e7687fcdd",
         intel: "791e7eec7795f1163372ebe1c2404bd5b51cab5dd6819855ac4f66e285ced36a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
