cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1894"
  sha256 arm:   "a435fac652c5c850d1186fb5a9ae6ba7daf54a70ed89316218e835e574428dfe",
         intel: "0a49423bc94e357389c2d6eac64522d657c94707256d2d49e8582842b2f11af3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
