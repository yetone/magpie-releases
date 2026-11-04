cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2888"
  sha256 arm:   "9ec05b54c40838e7d7cab65943fc1eb25c456f69639fe729c1a12feab909d5d7",
         intel: "9ad414e22789a7baac9c32d4c4dd936cc76e4b582e2da65efb82aca9ffbbd044"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
