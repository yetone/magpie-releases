cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3860"
  sha256 arm:   "3f01f6ef3c1c1f9baeab899851d74a33558754c768787fec0eafd879a036c5fa",
         intel: "e2815982c8d1c7b98e468720b9457f663320a4b15910682ae6cc41a5d111e987"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
