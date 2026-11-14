cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4199"
  sha256 arm:   "8ccc1f90f37988a603306651bf5a85b7570b262570adf5107060b10106d51c84",
         intel: "c9ea7f09786da4b321644d8c282215f53f96a95196f40aa79d457be076db9fa2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
