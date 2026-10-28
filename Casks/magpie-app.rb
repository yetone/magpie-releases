cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1901"
  sha256 arm:   "784614a3cb96dafaf6269636e8aece82a25f50270d7d3686b8961da1f6313e91",
         intel: "8d66ef6dbe0d37d14e27368f9f422e5b243350f52450ba5bb5c4f305ff711356"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
