cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4432"
  sha256 arm:   "ca9b2de3cb8361ab39dbe628fe894cfe831d8fa5f8f3ff87e9a1e0acf372846c",
         intel: "f6a8709c4d2defada479b1487b366b6fb50dba24f915cbadc8022835c0c04505"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
