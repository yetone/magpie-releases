cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4306"
  sha256 arm:   "7cd905ef6b5baec9c6cfc1c52c1fa5c8c6066bb0f186e7d010ae70c004425d17",
         intel: "d1e65ce276b8f7f7041ec08746be7819dae42e2abc7de5879db9f054ed285fa3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
