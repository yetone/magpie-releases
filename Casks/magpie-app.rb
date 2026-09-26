cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.127"
  sha256 arm:   "e0d3e8af1a0514b1ed9ca9a172fd3d764daf81ce2151d247be2102d318d2bff8",
         intel: "c18e54ee0c285f21c626a9739216198dfd733a96a97575707e937f01ad28f72a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
