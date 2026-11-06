cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3174"
  sha256 arm:   "c66511f652e5b13c7dcebc887d692f6ff45081a88a1f042bfb2a7474b512d050",
         intel: "f9c5591818010fe470267500f6ee2394506feecc3dd915cd50dbb61127d07808"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
