cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2045"
  sha256 arm:   "02d103323d93eec2e45f7b2c83336d3a92e47fc5c1548fe5b2166c702c83f33b",
         intel: "fb5d00f2f339921866fadd761dc2813a6b03bfd80b8cf0092e2546b64ea085e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
