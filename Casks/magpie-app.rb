cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3218"
  sha256 arm:   "ccc9b20cb688f5c6326c2ebbdd79cb59dc6d3bbbc85ebd769bbb0d8453a4c889",
         intel: "ca17132f69eb3a2217e4a3888df1560b94302fd2684561c0fd803f9cd45da418"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
