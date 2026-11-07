cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3251"
  sha256 arm:   "a26b0634f315a2ec1c60eb3751897f8ce20b7139e48c1c918e5166e70043ab83",
         intel: "ee3f12e80a06ae360483defd2174ebff6cba2dd556d5ad0583193b37a09b71ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
